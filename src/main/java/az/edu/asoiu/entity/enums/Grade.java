package az.edu.asoiu.entity.enums;

public enum Grade {
    A, B, C, D, E, F;

    public static Grade fromScore(int score) {
        if (score >= 91 && score <= 100) return A;
        if (score >= 81 && score < 91)  return B;
        if (score >= 71 && score < 81)  return C;
        if (score >= 61 && score < 71)  return D;
        if (score >= 51 && score < 61)  return E;
        return F;
    }
}
