.class public final Lorg/chromium/chrome/browser/childaccounts/ChildAccountFeedbackReporter;
.super Ljava/lang/Object;
.source "ChildAccountFeedbackReporter.java"


# static fields
.field private static sFeedbackReporter:Lorg/chromium/chrome/browser/feedback/FeedbackReporter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/chromium/chrome/browser/feedback/FeedbackReporter;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lorg/chromium/chrome/browser/childaccounts/ChildAccountFeedbackReporter;->sFeedbackReporter:Lorg/chromium/chrome/browser/feedback/FeedbackReporter;

    return-object v0
.end method

.method public static reportFeedback(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 25
    sget-object v0, Lorg/chromium/chrome/browser/childaccounts/ChildAccountFeedbackReporter;->sFeedbackReporter:Lorg/chromium/chrome/browser/feedback/FeedbackReporter;

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    .line 27
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->createFeedbackReporter()Lorg/chromium/chrome/browser/feedback/FeedbackReporter;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/childaccounts/ChildAccountFeedbackReporter;->sFeedbackReporter:Lorg/chromium/chrome/browser/feedback/FeedbackReporter;

    .line 29
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/childaccounts/ChildAccountFeedbackReporter$1;

    invoke-direct {v1, p1}, Lorg/chromium/chrome/browser/childaccounts/ChildAccountFeedbackReporter$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2, v1}, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->create(Landroid/app/Activity;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Lorg/chromium/chrome/browser/feedback/FeedbackCollector$FeedbackResult;)Lorg/chromium/chrome/browser/feedback/FeedbackCollector;

    .line 37
    return-void
.end method

.method public static reportFeedbackWithWindow(Lorg/chromium/ui/base/WindowAndroid;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lorg/chromium/chrome/browser/childaccounts/ChildAccountFeedbackReporter;->reportFeedback(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method
