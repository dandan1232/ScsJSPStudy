package Ch7.ch7_example7_1;

/**
 * @author: 蛋宝
 * @date: 2023/5/3 9:52
 * @description:
 */
public class Example7_1_Bean {
    double numberOne, numberTwo, result;
    String operator = "+";

    public void setNumberOne(double n) {
        numberOne = n;
    }

    public double getNumberOne() {
        return numberOne;
    }

    public void setNumberTwo(double n) {
        numberTwo = n;
    }

    public double getNumberTwo() {
        return numberTwo;
    }

    public void setOperator(String s) {
        operator = s.trim();
        ;
    }

    public String getOperator() {
        return operator;
    }

    public void setResult(double r) {
        result = r;
    }

    public double getResult() {
        return result;
    }
}
