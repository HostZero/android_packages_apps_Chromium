.class final enum Lorg/chromium/chrome/browser/ItemChooserDialog$State;
.super Ljava/lang/Enum;
.source "ItemChooserDialog.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/ItemChooserDialog$State;

.field public static final enum DISCOVERY_IDLE:Lorg/chromium/chrome/browser/ItemChooserDialog$State;

.field public static final enum PROGRESS_UPDATE_AVAILABLE:Lorg/chromium/chrome/browser/ItemChooserDialog$State;

.field public static final enum STARTING:Lorg/chromium/chrome/browser/ItemChooserDialog$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    new-instance v0, Lorg/chromium/chrome/browser/ItemChooserDialog$State;

    const-string/jumbo v1, "STARTING"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/ItemChooserDialog$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/ItemChooserDialog$State;->STARTING:Lorg/chromium/chrome/browser/ItemChooserDialog$State;

    new-instance v0, Lorg/chromium/chrome/browser/ItemChooserDialog$State;

    const-string/jumbo v1, "PROGRESS_UPDATE_AVAILABLE"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/ItemChooserDialog$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/ItemChooserDialog$State;->PROGRESS_UPDATE_AVAILABLE:Lorg/chromium/chrome/browser/ItemChooserDialog$State;

    new-instance v0, Lorg/chromium/chrome/browser/ItemChooserDialog$State;

    const-string/jumbo v1, "DISCOVERY_IDLE"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/ItemChooserDialog$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/ItemChooserDialog$State;->DISCOVERY_IDLE:Lorg/chromium/chrome/browser/ItemChooserDialog$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/chromium/chrome/browser/ItemChooserDialog$State;

    sget-object v1, Lorg/chromium/chrome/browser/ItemChooserDialog$State;->STARTING:Lorg/chromium/chrome/browser/ItemChooserDialog$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/ItemChooserDialog$State;->PROGRESS_UPDATE_AVAILABLE:Lorg/chromium/chrome/browser/ItemChooserDialog$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/ItemChooserDialog$State;->DISCOVERY_IDLE:Lorg/chromium/chrome/browser/ItemChooserDialog$State;

    aput-object v1, v0, v4

    sput-object v0, Lorg/chromium/chrome/browser/ItemChooserDialog$State;->$VALUES:[Lorg/chromium/chrome/browser/ItemChooserDialog$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/ItemChooserDialog$State;
    .locals 1

    .prologue
    .line 110
    const-class v0, Lorg/chromium/chrome/browser/ItemChooserDialog$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ItemChooserDialog$State;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/ItemChooserDialog$State;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lorg/chromium/chrome/browser/ItemChooserDialog$State;->$VALUES:[Lorg/chromium/chrome/browser/ItemChooserDialog$State;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/ItemChooserDialog$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/ItemChooserDialog$State;

    return-object v0
.end method
