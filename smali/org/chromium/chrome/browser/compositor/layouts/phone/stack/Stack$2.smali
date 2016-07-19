.class synthetic Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$2;
.super Ljava/lang/Object;
.source "Stack.java"


# static fields
.field static final synthetic $SwitchMap$org$chromium$chrome$browser$compositor$layouts$phone$stack$StackAnimation$OverviewAnimationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 558
    invoke-static {}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->values()[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$2;->$SwitchMap$org$chromium$chrome$browser$compositor$layouts$phone$stack$StackAnimation$OverviewAnimationType:[I

    :try_start_0
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$2;->$SwitchMap$org$chromium$chrome$browser$compositor$layouts$phone$stack$StackAnimation$OverviewAnimationType:[I

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->ENTER_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$2;->$SwitchMap$org$chromium$chrome$browser$compositor$layouts$phone$stack$StackAnimation$OverviewAnimationType:[I

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->FULL_ROLL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$2;->$SwitchMap$org$chromium$chrome$browser$compositor$layouts$phone$stack$StackAnimation$OverviewAnimationType:[I

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->TAB_FOCUSED:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$2;->$SwitchMap$org$chromium$chrome$browser$compositor$layouts$phone$stack$StackAnimation$OverviewAnimationType:[I

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->NEW_TAB_OPENED:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$2;->$SwitchMap$org$chromium$chrome$browser$compositor$layouts$phone$stack$StackAnimation$OverviewAnimationType:[I

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->DISCARD_ALL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$2;->$SwitchMap$org$chromium$chrome$browser$compositor$layouts$phone$stack$StackAnimation$OverviewAnimationType:[I

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->UNDISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/Stack$2;->$SwitchMap$org$chromium$chrome$browser$compositor$layouts$phone$stack$StackAnimation$OverviewAnimationType:[I

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->DISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method
