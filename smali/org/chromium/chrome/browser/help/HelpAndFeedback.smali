.class public Lorg/chromium/chrome/browser/help/HelpAndFeedback;
.super Ljava/lang/Object;
.source "HelpAndFeedback.java"


# static fields
.field protected static final FALLBACK_SUPPORT_URL:Ljava/lang/String; = "https://support.google.com/chrome/topic/6069782"

.field private static sInstance:Lorg/chromium/chrome/browser/help/HelpAndFeedback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHelpContextIdFromUrl(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget v0, Lorg/chromium/chrome/R$string;->help_context_general:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 92
    :cond_0
    const-string/jumbo v0, "chrome-native://bookmarks/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    sget v0, Lorg/chromium/chrome/R$string;->help_context_bookmarks:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_1
    const-string/jumbo v0, "chrome://history/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    sget v0, Lorg/chromium/chrome/R$string;->help_context_history:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_2
    invoke-static {p1}, Lorg/chromium/chrome/browser/util/UrlUtilities;->nativeIsGoogleSearchUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    sget v0, Lorg/chromium/chrome/R$string;->help_context_search_results:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_3
    if-eqz p2, :cond_4

    .line 101
    sget v0, Lorg/chromium/chrome/R$string;->help_context_incognito:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_4
    const-string/jumbo v0, "chrome-native://newtab/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 103
    sget v0, Lorg/chromium/chrome/R$string;->help_context_new_tab:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_5
    sget v0, Lorg/chromium/chrome/R$string;->help_context_webpage:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/help/HelpAndFeedback;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 41
    sget-object v0, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->sInstance:Lorg/chromium/chrome/browser/help/HelpAndFeedback;

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeApplication;->createHelpAndFeedback()Lorg/chromium/chrome/browser/help/HelpAndFeedback;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->sInstance:Lorg/chromium/chrome/browser/help/HelpAndFeedback;

    .line 45
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->sInstance:Lorg/chromium/chrome/browser/help/HelpAndFeedback;

    return-object v0
.end method

.method protected static launchFallbackSupportUri(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "https://support.google.com/chrome/topic/6069782"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 112
    const-string/jumbo v1, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string/jumbo v1, "create_new_tab"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void
.end method


# virtual methods
.method protected show(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/feedback/FeedbackCollector;)V
    .locals 0

    .prologue
    .line 59
    invoke-static {p1}, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->launchFallbackSupportUri(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lorg/chromium/chrome/browser/help/HelpAndFeedback$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/help/HelpAndFeedback$1;-><init>(Lorg/chromium/chrome/browser/help/HelpAndFeedback;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {p1, p3, p4, v0}, Lorg/chromium/chrome/browser/feedback/FeedbackCollector;->create(Landroid/app/Activity;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Lorg/chromium/chrome/browser/feedback/FeedbackCollector$FeedbackResult;)Lorg/chromium/chrome/browser/feedback/FeedbackCollector;

    .line 80
    return-void
.end method
