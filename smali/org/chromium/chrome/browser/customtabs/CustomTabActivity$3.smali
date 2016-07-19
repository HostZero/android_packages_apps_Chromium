.class Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$3;
.super Ljava/lang/Object;
.source "CustomTabActivity.java"

# interfaces
.implements Lorg/chromium/chrome/browser/customtabs/CustomTabContentHandler;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

.field final synthetic val$connection:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$3;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    iput-object p2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$3;->val$connection:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSession()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$3;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    # getter for: Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mSession:Landroid/os/IBinder;
    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->access$400(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public loadUrlAndTrackFromTimestamp(Lorg/chromium/content_public/browser/LoadUrlParams;J)V
    .locals 4

    .prologue
    .line 291
    invoke-virtual {p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$3;->val$connection:Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$3;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    # getter for: Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mSession:Landroid/os/IBinder;
    invoke-static {v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->access$400(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/customtabs/CustomTabsConnection;->overrideUrlIfNecessary(Ljava/lang/String;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;->setUrl(Ljava/lang/String;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$3;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$3;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    # invokes: Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->loadUrlInTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/LoadUrlParams;J)V
    invoke-static {v0, v1, p1, p2, p3}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->access$500(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/LoadUrlParams;J)V

    .line 295
    return-void
.end method

.method public shouldIgnoreIntent(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$3;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    # getter for: Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentHandler:Lorg/chromium/chrome/browser/IntentHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->access$600(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;)Lorg/chromium/chrome/browser/IntentHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$3;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    invoke-virtual {v0, v1, p1}, Lorg/chromium/chrome/browser/IntentHandler;->shouldIgnoreIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public updateCustomButton(ILandroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 309
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$3;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    # getter for: Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;
    invoke-static {v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->access$100(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;)Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->getButtonParamsForId(I)Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;

    move-result-object v1

    .line 310
    if-nez v1, :cond_1

    .line 321
    :cond_0
    :goto_0
    return v0

    .line 312
    :cond_1
    invoke-virtual {v1, p2, p3}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->update(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->showOnToolbar()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 314
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$3;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    invoke-static {v1, p2}, Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;->doesIconFitToolbar(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$3;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    # invokes: Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->showCustomButtonOnToolbar()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->access$700(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;)V

    .line 321
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 319
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$3;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    # invokes: Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->updateBottomBarButton(Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->access$800(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;Lorg/chromium/chrome/browser/customtabs/CustomButtonParams;)V

    goto :goto_1
.end method

.method public updateRemoteViews(Landroid/widget/RemoteViews;)Z
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$3;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    # getter for: Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->mIntentDataProvider:Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;
    invoke-static {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->access$100(Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;)Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/customtabs/CustomTabIntentDataProvider;->getBottomBarRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v0

    if-nez v0, :cond_0

    .line 328
    const/4 v0, 0x0

    .line 334
    :goto_0
    return v0

    .line 330
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$3;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    sget v1, Lorg/chromium/chrome/R$id;->bottombar:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 331
    iget-object v1, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabActivity$3;->this$0:Lorg/chromium/chrome/browser/customtabs/CustomTabActivity;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 332
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 333
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 334
    const/4 v0, 0x1

    goto :goto_0
.end method
