.class public final enum Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;
.super Ljava/lang/Enum;
.source "ExternalNavigationHandler.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

.field public static final enum NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

.field public static final enum OVERRIDE_WITH_ASYNC_ACTION:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

.field public static final enum OVERRIDE_WITH_CLOBBERING_TAB:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

.field public static final enum OVERRIDE_WITH_EXTERNAL_INTENT:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    const-string/jumbo v1, "OVERRIDE_WITH_EXTERNAL_INTENT"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->OVERRIDE_WITH_EXTERNAL_INTENT:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    .line 57
    new-instance v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    const-string/jumbo v1, "OVERRIDE_WITH_CLOBBERING_TAB"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->OVERRIDE_WITH_CLOBBERING_TAB:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    .line 60
    new-instance v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    const-string/jumbo v1, "OVERRIDE_WITH_ASYNC_ACTION"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->OVERRIDE_WITH_ASYNC_ACTION:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    .line 62
    new-instance v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    const-string/jumbo v1, "NO_OVERRIDE"

    invoke-direct {v0, v1, v5}, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    sget-object v1, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->OVERRIDE_WITH_EXTERNAL_INTENT:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->OVERRIDE_WITH_CLOBBERING_TAB:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->OVERRIDE_WITH_ASYNC_ACTION:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->NO_OVERRIDE:Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    aput-object v1, v0, v5

    sput-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->$VALUES:[Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->$VALUES:[Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/externalnav/ExternalNavigationHandler$OverrideUrlLoadingResult;

    return-object v0
.end method
