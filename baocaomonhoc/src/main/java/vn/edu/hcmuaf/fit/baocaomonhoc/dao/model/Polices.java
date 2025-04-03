package vn.edu.hcmuaf.fit.baocaomonhoc.dao.model;

public class Polices {
    private int policyId;
    private String policyName;
    private String policyDescription;

    public Polices() {
    }

    public Polices(int policyId, String policyName, String policyDescription) {
        this.policyId = policyId;
        this.policyName = policyName;
        this.policyDescription = policyDescription;
    }

    public int getPolicyId() {
        return policyId;
    }

    public void setPolicyId(int policyId) {
        this.policyId = policyId;
    }

    public String getPolicyName() {
        return policyName;
    }

    public void setPolicyName(String policyName) {
        this.policyName = policyName;
    }

    public String getPolicyDescription() {
        return policyDescription;
    }

    public void setPolicyDescription(String policyDescription) {
        this.policyDescription = policyDescription;
    }

    @Override
    public String toString() {
        return "Polices{" +
                "policyId=" + policyId +
                ", policyName='" + policyName + '\'' +
                ", policyDescription='" + policyDescription + '\'' +
                '}';
    }
}
