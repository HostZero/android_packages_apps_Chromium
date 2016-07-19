.class public final Lorg/chromium/chrome/browser/dom_distiller/DomDistillerUIUtils;
.super Ljava/lang/Object;
.source "DomDistillerUIUtils.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static sFeedbackReporter:Lorg/chromium/chrome/browser/feedback/FeedbackReporter;

.field private static sManagerDelegate:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/chromium/chrome/browser/feedback/FeedbackReporter;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerUIUtils;->sFeedbackReporter:Lorg/chromium/chrome/browser/feedback/FeedbackReporter;

    return-object v0
.end method

.method public static closePanel(Z)V
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerUIUtils;->sManagerDelegate:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerUIUtils;->sManagerDelegate:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->CLOSE_BUTTON:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-interface {v0, v1, p0}, Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;->closeReaderPanel(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;Z)V

    goto :goto_0
.end method

.method public static destroy(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;)V
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerUIUtils;->sManagerDelegate:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;

    if-eq p0, v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerUIUtils;->sManagerDelegate:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;

    goto :goto_0
.end method

.method private static getActivityFromWebContents(Lorg/chromium/content_public/browser/WebContents;)Landroid/app/Activity;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 120
    if-nez p0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-object v0

    .line 122
    :cond_1
    invoke-static {p0}, Lorg/chromium/content/browser/ContentViewCore;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v1

    .line 126
    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public static openSettings(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 3

    .prologue
    .line 84
    invoke-static {p0}, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerUIUtils;->getActivityFromWebContents(Lorg/chromium/content_public/browser/WebContents;)Landroid/app/Activity;

    move-result-object v0

    .line 85
    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 86
    const-string/jumbo v1, "DomDistiller_DistilledPagePrefsOpened"

    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 87
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    sget v2, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v1, v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 89
    invoke-static {v0}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->create(Landroid/content/Context;)Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 92
    :cond_0
    return-void
.end method

.method public static reportFeedbackWithWebContents(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 59
    invoke-static {p0}, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerUIUtils;->getActivityFromWebContents(Lorg/chromium/content_public/browser/WebContents;)Landroid/app/Activity;

    move-result-object v1

    .line 60
    if-nez v1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 62
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerUIUtils;->sFeedbackReporter:Lorg/chromium/chrome/browser/feedback/FeedbackReporter;

    if-nez v0, :cond_1

    .line 63
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    .line 64
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->createFeedbackReporter()Lorg/chromium/chrome/browser/feedback/FeedbackReporter;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerUIUtils;->sFeedbackReporter:Lorg/chromium/chrome/browser/feedback/FeedbackReporter;

    .line 66
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    new-instance v2, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerUIUtils$1;

    invoke-direct {v2, p2}, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerUIUtils$1;-><init>(Z)V

    invoke-static {v1, v0, p1, v2}, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->create(Landroid/app/Activity;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Lorg/chromium/chrome/browser/feedback/FeedbackCollector$FeedbackResult;)Lorg/chromium/chrome/browser/feedback/FeedbackCollector;

    goto :goto_0
.end method

.method public static setReaderModeManagerDelegate(Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;)V
    .locals 0

    .prologue
    .line 44
    sput-object p0, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerUIUtils;->sManagerDelegate:Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;

    .line 45
    return-void
.end method
