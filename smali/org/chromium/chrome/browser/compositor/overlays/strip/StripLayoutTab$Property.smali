.class final enum Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;
.super Ljava/lang/Enum;
.source "StripLayoutTab.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

.field public static final enum WIDTH:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

.field public static final enum X_OFFSET:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

.field public static final enum Y_OFFSET:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

    const-string/jumbo v1, "X_OFFSET"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;->X_OFFSET:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

    .line 42
    new-instance v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

    const-string/jumbo v1, "Y_OFFSET"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;->Y_OFFSET:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

    .line 43
    new-instance v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

    const-string/jumbo v1, "WIDTH"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;->WIDTH:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;->X_OFFSET:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;->Y_OFFSET:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;->WIDTH:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

    aput-object v1, v0, v4

    sput-object v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;->$VALUES:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;->$VALUES:[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab$Property;

    return-object v0
.end method
