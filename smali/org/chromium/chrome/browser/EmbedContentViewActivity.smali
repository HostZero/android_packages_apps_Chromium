.class public Lorg/chromium/chrome/browser/EmbedContentViewActivity;
.super Lorg/chromium/chrome/browser/webapps/FullScreenActivity;
.source "EmbedContentViewActivity.java"


# static fields
.field protected static final TITLE_INTENT_EXTRA:Ljava/lang/String; = "title"

.field protected static final URL_INTENT_EXTRA:Ljava/lang/String; = "url"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;II)V
    .locals 2

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/chromium/chrome/browser/EmbedContentViewActivity;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    const-class v1, Lorg/chromium/chrome/browser/EmbedContentViewActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 57
    const/high16 v1, 0x20020000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    :goto_1
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 61
    :cond_1
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1
.end method


# virtual methods
.method protected final createFullscreenManager(Landroid/view/View;)Lorg/chromium/chrome/browser/fullscreen/ChromeFullscreenManager;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createTabDelegate(Z)Lorg/chromium/chrome/browser/tabmodel/document/TabDelegate;
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lorg/chromium/chrome/browser/EmbedContentViewActivity$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/EmbedContentViewActivity$1;-><init>(Lorg/chromium/chrome/browser/EmbedContentViewActivity;Z)V

    return-object v0
.end method

.method public finishNativeInitialization()V
    .locals 4

    .prologue
    const/4 v1, 0x4

    .line 70
    invoke-super {p0}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->finishNativeInitialization()V

    .line 71
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/EmbedContentViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/support/v7/app/ActionBar;->a(II)V

    .line 74
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/EmbedContentViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/EmbedContentViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/EmbedContentViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/EmbedContentViewActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    new-instance v2, Lorg/chromium/content_public/browser/LoadUrlParams;

    const/4 v3, 0x6

    invoke-direct {v2, v0, v3}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/tab/Tab;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    .line 83
    :cond_1
    return-void
.end method

.method protected isContextualSearchAllowed()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 93
    invoke-static {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunStatus;->getFirstRunFlowComplete(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    :goto_0
    return v0

    .line 94
    :cond_0
    sget v0, Lorg/chromium/chrome/R$id;->menu_id_open_in_chrome:I

    sget v1, Lorg/chromium/chrome/R$string;->menu_open_in_chrome:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 95
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 100
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 101
    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 103
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/EmbedContentViewActivity;->finish()V

    .line 113
    :goto_0
    return v0

    .line 105
    :cond_0
    sget v2, Lorg/chromium/chrome/R$id;->menu_id_open_in_chrome:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/EmbedContentViewActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 106
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/EmbedContentViewActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 108
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/EmbedContentViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/IntentHandler;->startChromeLauncherActivityForTrustedIntent(Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_0

    .line 113
    :cond_1
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/webapps/FullScreenActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setStatusBarColor(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method
