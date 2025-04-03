package vn.edu.hcmuaf.fit.baocaomonhoc.dao.model;

public class Warehouses {
    private int warehouseId;
    private String warehouseAddress;
    private String warehouseName;
    private int warehouseCapacity;

    public Warehouses() {
    }

    public Warehouses(int warehouseId, String warehouseAddress, String warehouseName, int warehouseCapacity) {
        this.warehouseId = warehouseId;
        this.warehouseAddress = warehouseAddress;
        this.warehouseName = warehouseName;
        this.warehouseCapacity = warehouseCapacity;
    }

    public int getWarehouseId() {
        return warehouseId;
    }

    public void setWarehouseId(int warehouseId) {
        this.warehouseId = warehouseId;
    }

    public String getWarehouseAddress() {
        return warehouseAddress;
    }

    public void setWarehouseAddress(String warehouseAddress) {
        this.warehouseAddress = warehouseAddress;
    }

    public String getWarehouseName() {
        return warehouseName;
    }

    public void setWarehouseName(String warehouseName) {
        this.warehouseName = warehouseName;
    }

    public int getWarehouseCapacity() {
        return warehouseCapacity;
    }

    public void setWarehouseCapacity(int warehouseCapacity) {
        this.warehouseCapacity = warehouseCapacity;
    }

    @Override
    public String toString() {
        return "Warehouses{" +
                "warehouseId=" + warehouseId +
                ", warehouseAddress='" + warehouseAddress + '\'' +
                ", warehouseName='" + warehouseName + '\'' +
                ", warehouseCapacity='" + warehouseCapacity + '\'' +
                '}';
    }
}
