.class final enum Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;
.super Ljava/lang/Enum;
.source "BluetoothChooserDialog.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

.field public static final enum ADAPTER_OFF:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

.field public static final enum ADAPTER_OFF_HELP:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

.field public static final enum EXPLAIN_BLUETOOTH:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

.field public static final enum NEED_LOCATION_PERMISSION_HELP:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

.field public static final enum REQUEST_LOCATION_PERMISSION:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

.field public static final enum RESTART_SEARCH:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    new-instance v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    const-string/jumbo v1, "EXPLAIN_BLUETOOTH"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->EXPLAIN_BLUETOOTH:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    .line 71
    new-instance v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    const-string/jumbo v1, "ADAPTER_OFF"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->ADAPTER_OFF:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    .line 72
    new-instance v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    const-string/jumbo v1, "ADAPTER_OFF_HELP"

    invoke-direct {v0, v1, v5}, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->ADAPTER_OFF_HELP:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    .line 73
    new-instance v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    const-string/jumbo v1, "REQUEST_LOCATION_PERMISSION"

    invoke-direct {v0, v1, v6}, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->REQUEST_LOCATION_PERMISSION:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    .line 74
    new-instance v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    const-string/jumbo v1, "NEED_LOCATION_PERMISSION_HELP"

    invoke-direct {v0, v1, v7}, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->NEED_LOCATION_PERMISSION_HELP:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    .line 75
    new-instance v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    const-string/jumbo v1, "RESTART_SEARCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->RESTART_SEARCH:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    .line 69
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    sget-object v1, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->EXPLAIN_BLUETOOTH:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->ADAPTER_OFF:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->ADAPTER_OFF_HELP:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->REQUEST_LOCATION_PERMISSION:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->NEED_LOCATION_PERMISSION_HELP:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->RESTART_SEARCH:Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->$VALUES:[Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;
    .locals 1

    .prologue
    .line 69
    const-class v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->$VALUES:[Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/BluetoothChooserDialog$LinkType;

    return-object v0
.end method
