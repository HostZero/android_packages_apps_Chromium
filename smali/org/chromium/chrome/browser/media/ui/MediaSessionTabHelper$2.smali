.class Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$2;
.super Lorg/chromium/content_public/browser/WebContentsObserver;
.source "MediaSessionTabHelper.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$2;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    invoke-direct {p0, p2}, Lorg/chromium/content_public/browser/WebContentsObserver;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$2;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->hideNotification()V

    .line 86
    invoke-super {p0}, Lorg/chromium/content_public/browser/WebContentsObserver;->destroy()V

    .line 87
    return-void
.end method

.method public mediaSessionStateChanged(ZZLorg/chromium/content_public/common/MediaMetadata;)V
    .locals 6

    .prologue
    .line 92
    if-nez p1, :cond_1

    .line 93
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$2;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->hideNotification()V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$2;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$100(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 98
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/util/UrlUtilities;->formatUrlForSecurityDisplay(Ljava/net/URI;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    :goto_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$2;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    const/4 v2, 0x0

    # setter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mFallbackMetadata:Lorg/chromium/content_public/common/MediaMetadata;
    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$202(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;Lorg/chromium/content_public/common/MediaMetadata;)Lorg/chromium/content_public/common/MediaMetadata;

    .line 108
    invoke-virtual {p3}, Lorg/chromium/content_public/common/MediaMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$2;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    new-instance v2, Lorg/chromium/content_public/common/MediaMetadata;

    iget-object v3, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$2;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    iget-object v4, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$2;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v4}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$100(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v4

    # invokes: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->sanitizeMediaTitle(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$300(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lorg/chromium/content_public/common/MediaMetadata;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lorg/chromium/content_public/common/MediaMetadata;->getAlbum()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/chromium/content_public/common/MediaMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    # setter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mFallbackMetadata:Lorg/chromium/content_public/common/MediaMetadata;
    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$202(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;Lorg/chromium/content_public/common/MediaMetadata;)Lorg/chromium/content_public/common/MediaMetadata;

    .line 113
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$2;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mFallbackMetadata:Lorg/chromium/content_public/common/MediaMetadata;
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$200(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/content_public/common/MediaMetadata;

    move-result-object p3

    .line 116
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$2;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    new-instance v2, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    invoke-direct {v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;-><init>()V

    invoke-virtual {v2, p3}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setMetadata(Lorg/chromium/content_public/common/MediaMetadata;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setPaused(Z)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setOrigin(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$2;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v2}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$100(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setTabId(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$2;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v2}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$100(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->isIncognito()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setPrivate(Z)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$drawable;->audio_playing:I

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setIcon(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setActions(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$2;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v2}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$100(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v2

    invoke-static {v2}, Lorg/chromium/chrome/browser/tab/Tab;->createBringTabToFrontIntent(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setContentIntent(Landroid/content/Intent;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$id;->media_playback_notification:I

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setId(I)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$2;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mControlsListener:Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;
    invoke-static {v2}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$500(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setListener(Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v0

    # setter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mNotificationInfoBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$402(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    .line 129
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$2;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mNotificationInfoBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$400(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->build()Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->show(Landroid/content/Context;Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;)V

    .line 132
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$2;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$2;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$100(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    # invokes: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->getActivityFromTab(Lorg/chromium/chrome/browser/tab/Tab;)Landroid/app/Activity;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$600(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;Lorg/chromium/chrome/browser/tab/Tab;)Landroid/app/Activity;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    goto/16 :goto_0

    .line 100
    :catch_0
    move-exception v1

    const-string/jumbo v1, "MediaSession"

    const-string/jumbo v2, "Unable to parse the origin from the URL. Showing the full URL instead."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method
