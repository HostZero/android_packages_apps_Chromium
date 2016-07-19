.class public final enum Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;
.super Ljava/lang/Enum;
.source "OverlayPanel.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum BACK_PRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum BASE_PAGE_SCROLL:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum BASE_PAGE_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum CLEARED_SELECTION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum CLICK:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum CLOSE_BUTTON:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum CONTENT_CHANGED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum FLING:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum FULLSCREEN_ENTERED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum FULLSCREEN_EXITED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum INFOBAR_HIDDEN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum INFOBAR_SHOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum INVALID_SELECTION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum KEYBOARD_HIDDEN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum KEYBOARD_SHOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum OPTIN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum OPTOUT:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum PROMO_ACCEPTED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum RESET:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum SEARCH_BAR_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum SERP_NAVIGATION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum SUPPRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum SWIPE:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum TAB_NAVIGATION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum TAB_PROMOTION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum TEXT_SELECT_LONG_PRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum TEXT_SELECT_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

.field public static final enum UNSUPPRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 61
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "RESET"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->RESET:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 62
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "BACK_PRESS"

    invoke-direct {v0, v1, v5}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->BACK_PRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 63
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "TEXT_SELECT_TAP"

    invoke-direct {v0, v1, v6}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TEXT_SELECT_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 64
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "TEXT_SELECT_LONG_PRESS"

    invoke-direct {v0, v1, v7}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TEXT_SELECT_LONG_PRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 65
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "INVALID_SELECTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->INVALID_SELECTION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 66
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "CLEARED_SELECTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->CLEARED_SELECTION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 67
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "BASE_PAGE_TAP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->BASE_PAGE_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 68
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "BASE_PAGE_SCROLL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->BASE_PAGE_SCROLL:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 69
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "SEARCH_BAR_TAP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SEARCH_BAR_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 70
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "SERP_NAVIGATION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SERP_NAVIGATION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 71
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "TAB_PROMOTION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TAB_PROMOTION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 72
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "CLICK"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->CLICK:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 73
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "SWIPE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SWIPE:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 74
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "FLING"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FLING:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 75
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "OPTIN"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->OPTIN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 76
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "OPTOUT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->OPTOUT:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 77
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "CLOSE_BUTTON"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->CLOSE_BUTTON:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 78
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "SUPPRESS"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SUPPRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 79
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "UNSUPPRESS"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNSUPPRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 80
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "FULLSCREEN_ENTERED"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FULLSCREEN_ENTERED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 81
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "FULLSCREEN_EXITED"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FULLSCREEN_EXITED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 82
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "INFOBAR_SHOWN"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->INFOBAR_SHOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 83
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "INFOBAR_HIDDEN"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->INFOBAR_HIDDEN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 84
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "CONTENT_CHANGED"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->CONTENT_CHANGED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 85
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "KEYBOARD_SHOWN"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->KEYBOARD_SHOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 86
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "KEYBOARD_HIDDEN"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->KEYBOARD_HIDDEN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 87
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "TAB_NAVIGATION"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TAB_NAVIGATION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 88
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    const-string/jumbo v1, "PROMO_ACCEPTED"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->PROMO_ACCEPTED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    .line 59
    const/16 v0, 0x1d

    new-array v0, v0, [Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->RESET:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->BACK_PRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TEXT_SELECT_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TEXT_SELECT_LONG_PRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->INVALID_SELECTION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->CLEARED_SELECTION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->BASE_PAGE_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->BASE_PAGE_SCROLL:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SEARCH_BAR_TAP:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SERP_NAVIGATION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TAB_PROMOTION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->CLICK:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SWIPE:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FLING:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->OPTIN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->OPTOUT:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->CLOSE_BUTTON:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->SUPPRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNSUPPRESS:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FULLSCREEN_ENTERED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->FULLSCREEN_EXITED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->INFOBAR_SHOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->INFOBAR_HIDDEN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->CONTENT_CHANGED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->KEYBOARD_SHOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->KEYBOARD_HIDDEN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->TAB_NAVIGATION:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->PROMO_ACCEPTED:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->$VALUES:[Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->$VALUES:[Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    return-object v0
.end method
