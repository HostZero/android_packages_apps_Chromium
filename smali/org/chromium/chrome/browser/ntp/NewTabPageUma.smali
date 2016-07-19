.class public Lorg/chromium/chrome/browser/ntp/NewTabPageUma;
.super Ljava/lang/Object;
.source "NewTabPageUma.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ACTION_CLICKED_INTEREST:I = 0x8

.field public static final ACTION_OPENED_BOOKMARK:I = 0x5

.field public static final ACTION_OPENED_FOREIGN_SESSION:I = 0x6

.field public static final ACTION_OPENED_MOST_VISITED_ENTRY:I = 0x3

.field public static final ACTION_OPENED_RECENTLY_CLOSED_ENTRY:I = 0x4

.field public static final ACTION_OPENED_SNIPPET:I = 0x7

.field public static final RAPPOR_ACTION_VISITED_SUGGESTED_TILE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lorg/chromium/chrome/browser/ntp/NewTabPageUma;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ntp/NewTabPageUma;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static recordAction(I)V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 54
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/NewTabPageUma;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/NewTabPageUma;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-lt p0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_1
    packed-switch p0, :pswitch_data_0

    .line 73
    :goto_0
    const-string/jumbo v0, "NewTabPage.ActionAndroid"

    invoke-static {v0, p0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 74
    return-void

    .line 58
    :pswitch_0
    const-string/jumbo v0, "MobileNTPMostVisited"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :pswitch_1
    const-string/jumbo v0, "MobileNTPRecentlyClosed"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :pswitch_2
    const-string/jumbo v0, "MobileNTPBookmark"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_3
    const-string/jumbo v0, "MobileNTPForeignSession"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static recordExplicitUserNavigation(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 98
    packed-switch p1, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 100
    :pswitch_0
    const-string/jumbo v0, "NTP.ExplicitUserAction.PageNavigation.OmniboxNonSearch"

    invoke-static {v0, p0}, Lorg/chromium/chrome/browser/rappor/RapporServiceBridge;->sampleDomainAndRegistryFromURL(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :pswitch_1
    const-string/jumbo v0, "NTP.ExplicitUserAction.PageNavigation.NTPTileClick"

    invoke-static {v0, p0}, Lorg/chromium/chrome/browser/rappor/RapporServiceBridge;->sampleDomainAndRegistryFromURL(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static recordOmniboxNavigation(Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    and-int/lit16 v0, p1, 0xff

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 83
    invoke-static {v2}, Lorg/chromium/chrome/browser/ntp/NewTabPageUma;->recordAction(I)V

    .line 92
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/UrlUtilities;->nativeIsGoogleHomePageUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageUma;->recordAction(I)V

    .line 90
    :goto_1
    invoke-static {p0, v2}, Lorg/chromium/chrome/browser/ntp/NewTabPageUma;->recordExplicitUserNavigation(Ljava/lang/String;I)V

    goto :goto_0

    .line 88
    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageUma;->recordAction(I)V

    goto :goto_1
.end method
