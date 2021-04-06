/*Author: Juan Pablo Mendieta
Main JavaScript code used in the survey page. Contains all the JQuery and Ajax methods required for the assignment*/

var date = new Date()
var hour = date.getHours()
var currentUserName = ""
var greetingMessage = ""

//Determine the time of the day for the greeting message
if (hour < 12) {
    greetingMessage = "Good Morning, "
} else {
    hour = hour - 12
    if (hour < 6) {
        greetingMessage = "Good Afternoon, "
    } else {
        greetingMessage = "Good Evenning, "
    }
}

//If the document contains a cookie then allow the user to continue, if not prompt a window to input the user's name
if (getCookiePropertyValue("name") !== "") {
    currentUserName = getCookiePropertyValue("name")
} else {
    currentUserName = prompt("Please enter your name")
    document.cookie = "name=" + escape(currentUserName)
}

//Get a specific property from a cookie
function getCookiePropertyValue(property) {

    // Split cookie string and get all individual name=value pairs in an array
    var cookieData = document.cookie.split(";");

    // Loop through the array elements
    for (var i = 0; i < cookieData.length; i++) {
        var cookiePair = cookieData[i].split("=");
        /* Removing whitespace at the beginning of the cookie name
        and compare it with the given string */
        if (property == cookiePair[0].trim()) {
            // Decode the cookie value and return
            return decodeURIComponent(cookiePair[1]);
        }
    }
    //Return empty if not found
    return ""
}

//Sets the greeting message on the page
function setGreetingMessage() {
    var greetingTag = document.getElementById("greeting")
    greetingTag.innerHTML = greetingMessage + currentUserName + "!"
}

//Sets the change current user name message on the page
function setChangeUserMessage() {
    var greetingTag = document.getElementById("changeUser")
    greetingTag.innerHTML = "Click here if you are not " + currentUserName
}

//Manually make the current cookie expire so the user can change their name
function wrongCurrentUser() {
    getCookiePropertyValue("name")
    document.cookie = "name=null;" + " expires=Thu, 01-Jan-95 00:00:01 GMT"
    location.reload()
}

//Calculates the average and maximum number from the user input on the data field
function calculateAverageMaximum() {

    //Get the value of the data input field and then parse it by commas
    var data = document.getElementById("data").value
    var tokens = data.split(",")

    var result = 0

    for (i = 0; i < tokens.length; i++) {
        result += parseInt(tokens[i])
    }

    result = result / 10

    //Transform the tokens array of string numbers to an array of integers
    var numberArray = tokens.map(Number);

    document.getElementById("average").innerHTML = result
    document.getElementById("maximum").innerHTML = Math.max.apply(Math, numberArray)

}

//Custom validation for the survey using Ajax
$(function() {
    var $surveyForm = $("#surveyForm")
        //Check if the form has inputs
    if ($surveyForm.length) {
        $surveyForm.validate({
            rules: {
                //Regex to check that user only inputs alphabet characters
                name: {
                    required: true,
                    pattern: "^[A-Za-z]+$"
                },
                //Regex to check that user only inputs alphanumeric characters or spaces
                address: {
                    required: true,
                    pattern: "^[A-Za-z0-9 ]+$"
                },
                city: {
                    required: true
                },
                state: {
                    required: true
                },
                zip: {
                    required: true,
                    //Call the server to retrieve the list of zipcodes and validate the user input
                    remote: {
                        url: "http://mason.gmu.edu/~jmendiet/testaccess/HW2/zipcodes.json",
                        type: "get",
                        dataType: "json",
                        dataFilter: function(data) {
                            //Get the zip input after the user finished typing it
                            var $zipInput = $('input[id=zip]').blur(function() {
                                $(this).val()
                            });
                            var json = $.parseJSON(data);
                            //Check if the input zipcode is contained in the server json response
                            for (var i = 0; i < json.zipcodes.length; i++) {
                                if (json.zipcodes[i].zip === $zipInput.val()) {
                                    return true
                                } else {
                                    //Clear the city and state fields when the user input an incorrect zipcode
                                    $("#city").text("N/A")
                                    $("#state").text("N/A")
                                }
                            }
                            return false

                        }
                    }
                },
                telephone: {
                    required: true
                },
                //Regex to check that user inputs a correct email address
                email: {
                    required: true,
                    pattern: "^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$"
                },
                date: {
                    required: true
                },
                interested: {
                    required: true
                },
                //Ensure that the user checks at least 2 boxes from the preferences checkbox
                preferences: {
                    required: true,
                    minlength: 2
                }
            },
            //Custom validation messages
            messages: {
                name: {
                    required: " Name is required",
                    pattern: " Only alphabet characters are allowed"
                },
                address: {
                    required: " Address is required",
                    pattern: " Only alphanumeric characters are allowed"
                },
                city: {
                    required: " City is required",
                },
                state: {
                    required: " State is required",
                },
                zip: {
                    required: " Zip is required",
                    remote: " Incorrect zip"
                },
                telephone: {
                    required: " Telephone is required",
                },
                date: {
                    required: " Date is required",
                },
                email: {
                    required: " Email is required",
                    pattern: " Email format not allowed"
                },
                interested: {
                    required: " Select at least one",
                },
                preferences: {
                    required: " Select at least two",
                    minlength: " Select at least two",
                }
            },
            //Place the validation messages at the end for radio and checkbox inputs
            errorPlacement: function(error, element) {
                if (element.is(":radio")) {
                    error.appendTo(element.parents('.interestedList'));
                } else if (element.is(":checkbox")) {
                    error.appendTo(element.parents('.preferencesList'));
                } else { // This is the default behavior 
                    error.insertAfter(element);
                }
            }
        })

        //When the user submits the form check if the validations passed
        $("#btnSubmit").click(function() {
            //If the form is not valid then display a JQuery modal containing the errors contained in the form
            if ($surveyForm.valid() === false) {
                //Generate the validation messages according to the custom validations for the fields
                if (populateValidationMessage() !== "") {
                    //Use JQuery to create the dialog modal
                    $("#validationModal").dialog({
                        title: "Please fix the following things",
                        width: 430,
                        height: 250,
                        modal: true,
                        position: {
                            my: "top",
                            at: "top",
                            of: window
                        },
                        buttons: {
                            Close: function() {
                                $(this).dialog('close')
                            }
                        }
                    })
                }
            } else {
                //If the form is correct just submit it
                submitMessage()
                $surveyForm.submit()
            }
        })
    }

})

//Call the server to retrieve a list of zipcodes and auto fill the city and state field by the user's zipcode input
function autocompleteLocation() {
    $.getJSON("http://mason.gmu.edu/~jmendiet/testaccess/HW2/zipcodes.json", function(data) {
            console.log("success");

            //Get the user's zipcode input
            var zipInput = document.getElementById("zip").value

            var zipResult = {}

            //Loop throughout the json response from the server to find a match, if there is a match then assign the data to an auxiliary variable
            for (var i = 0; i < data.zipcodes.length; i++) {
                if (data.zipcodes[i].zip === zipInput) {
                    zipResult = data.zipcodes[i]
                    break;
                }
            }

            //If there is a match, then auto fill the city and state fields
            if (!jQuery.isEmptyObject(zipResult)) {
                document.getElementById("state").innerText = zipResult.state
                document.getElementById("city").innerText = zipResult.city
            }
        })
        .done(function() {
            console.log("second success");
        })
        .fail(function() {
            console.log("error");
        })
        .always(function() {
            console.log("complete");
        });
}

//Prepare a custom message with the validation errors according to the user's input
function populateValidationMessage() {

    var valid = ""

    //Concatenate each error message to an auxiliary variable
    if ($("#name").valid() === false) {
        valid = valid.concat("Name: only alphabet characters are allowed,")
    }
    if ($("#address").valid() === false) {
        valid = valid.concat("Address: only alphanumeric characters are allowed,")
    }
    if ($("#email").valid() === false) {
        valid = valid.concat("Email: the format is not valid,")
    }
    if (!$("input[name='interested']").is(':checked')) {
        valid = valid.concat("GMU Interest: at least one must be selected,")
    }
    if ($("input[name='preferences']:checked").length < 2) {
        valid = valid.concat("Campus Preferences: at least two must be selected,")
    }

    //Split the message by commas
    customItems = valid.split(",");

    //Remove empty values
    customItems = customItems.filter(function(el) {
        return el !== ""
    })

    //Format the validation message to display to the user
    for (let i = 0; i < customItems.length; i++) {
        customItems[i] = "- " + customItems[i] + "<br>";
    }

    //Join the custom message again
    customItems = customItems.join("");

    //Set the message that is going to be displayed in the JQuery dialog modal
    document.getElementById("validationModal").innerHTML = customItems;

    return valid
}

//Cleans the autocompleted fields when the user clicks on the reset button
function resetAutocompleteValues() {
    document.getElementById("state").innerText = "N/A"
    document.getElementById("city").innerText = "N/A"
}

function submitMessage() {
    alert("Survey submitted. Thank you!");
}

//Check if the page has fully loaded and then set the greeting message according to the user input and time of the day.
window.onload = function() {
    setGreetingMessage()
    setChangeUserMessage()
};