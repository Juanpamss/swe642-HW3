package beans;

public class DataProcessor {

	public double calculateMean(int[] numbers) {

		double mean = 0;
		
		for (int i = 0; i < numbers.length; i++) {
			mean += numbers[i];
		}
		return (double) mean/numbers.length;
	}

	public double calculateStandardDeviation(int[] numbers) {

		double mean = calculateMean(numbers);
		
		double sumOfSquaredDifferences = 0;
		
		for (int i = 0; i < numbers.length; i++) {
			sumOfSquaredDifferences += Math.pow((double) numbers[i] - mean, 2);
		}
		return Math.sqrt((double)sumOfSquaredDifferences/numbers.length);
	}
	
	public DataBean performOperations(int[] numbers) {
		
		DataBean dataBean = new DataBean();
		
		dataBean.setMean(calculateMean(numbers));
		
		dataBean.setStandardDeviation(calculateStandardDeviation(numbers));
		
		return dataBean;
	}

}
