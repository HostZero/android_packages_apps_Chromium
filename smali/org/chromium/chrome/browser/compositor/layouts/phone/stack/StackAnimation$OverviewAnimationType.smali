.class public final enum Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;
.super Ljava/lang/Enum;
.source "StackAnimation.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

.field public static final enum DISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

.field public static final enum DISCARD_ALL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

.field public static final enum ENTER_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

.field public static final enum FULL_ROLL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

.field public static final enum NEW_TAB_OPENED:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

.field public static final enum NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

.field public static final enum REACH_TOP:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

.field public static final enum START_PINCH:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

.field public static final enum TAB_FOCUSED:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

.field public static final enum UNDISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

.field public static final enum VIEW_MORE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    const-string/jumbo v1, "ENTER_STACK"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->ENTER_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    .line 25
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    const-string/jumbo v1, "NEW_TAB_OPENED"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->NEW_TAB_OPENED:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    .line 26
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    const-string/jumbo v1, "TAB_FOCUSED"

    invoke-direct {v0, v1, v5}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->TAB_FOCUSED:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    .line 27
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    const-string/jumbo v1, "VIEW_MORE"

    invoke-direct {v0, v1, v6}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->VIEW_MORE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    .line 28
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    const-string/jumbo v1, "REACH_TOP"

    invoke-direct {v0, v1, v7}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->REACH_TOP:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    .line 30
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    const-string/jumbo v1, "DISCARD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->DISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    .line 31
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    const-string/jumbo v1, "DISCARD_ALL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->DISCARD_ALL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    .line 32
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    const-string/jumbo v1, "UNDISCARD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->UNDISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    .line 34
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    const-string/jumbo v1, "START_PINCH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->START_PINCH:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    .line 36
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    const-string/jumbo v1, "FULL_ROLL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->FULL_ROLL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    .line 38
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    const-string/jumbo v1, "NONE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    .line 23
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->ENTER_STACK:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->NEW_TAB_OPENED:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->TAB_FOCUSED:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->VIEW_MORE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->REACH_TOP:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->DISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->DISCARD_ALL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->UNDISCARD:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->START_PINCH:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->FULL_ROLL:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->NONE:Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->$VALUES:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->$VALUES:[Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/compositor/layouts/phone/stack/StackAnimation$OverviewAnimationType;

    return-object v0
.end method
