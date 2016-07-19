.class public Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;
.super Landroid/app/Activity;
.source "PrerenderAPITestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final KEY_PREPRENDERED_URL:Ljava/lang/String; = "url_to_preprender"

.field static final MSG_PRERENDER_URL:I = 0x1


# instance fields
.field private final mConnection:Landroid/content/ServiceConnection;

.field mService:Landroid/os/Messenger;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;->mService:Landroid/os/Messenger;

    .line 37
    new-instance v0, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity$1;-><init>(Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 95
    sget v0, Lorg/chromium/chrome/R$id;->url_to_load:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;->mUrl:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lorg/chromium/chrome/R$id;->preload_button:I

    if-ne v0, v1, :cond_1

    .line 97
    iget-object v0, p0, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;->prerenderUrl(Ljava/lang/String;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lorg/chromium/chrome/R$id;->load_button:I

    if-ne v0, v1, :cond_0

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 100
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget v0, Lorg/chromium/chrome/R$layout;->prerender_test_main:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;->setContentView(I)V

    .line 53
    sget v0, Lorg/chromium/chrome/R$id;->preload_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    sget v0, Lorg/chromium/chrome/R$id;->load_button:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    sget v0, Lorg/chromium/chrome/R$id;->url_to_load:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string/jumbo v1, "http://www.nytimes.com"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const-string/jumbo v0, "http://www.nytimes.com"

    iput-object v0, p0, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;->mUrl:Ljava/lang/String;

    .line 58
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;->mService:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 73
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 63
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 64
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lorg/chromium/chrome/browser/prerender/ChromePrerenderService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    iget-object v1, p0, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 67
    return-void
.end method

.method public prerenderUrl(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;->mService:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 83
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 84
    const-string/jumbo v2, "url_to_prerender"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 87
    :try_start_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;->mService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
