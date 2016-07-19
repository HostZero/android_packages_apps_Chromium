.class synthetic Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackViewAnimation$1;
.super Ljava/lang/Object;
.source "StackViewAnimation.java"


# static fields
.field static final synthetic $SwitchMap$org$chromium$chrome$browser$compositor$layouts$phone$stack$StackAnimation$OverviewAnimationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->values()[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackViewAnimation$1;->$SwitchMap$org$chromium$chrome$browser$compositor$layouts$phone$stack$StackAnimation$OverviewAnimationType:[I

    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackViewAnimation$1;->$SwitchMap$org$chromium$chrome$browser$compositor$layouts$phone$stack$StackAnimation$OverviewAnimationType:[I

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->NEW_TAB_OPENED:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
