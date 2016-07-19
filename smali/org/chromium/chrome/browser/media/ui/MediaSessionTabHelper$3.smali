.class Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$3;
.super Lorg/chromium/chrome/browser/tab/EmptyTabObserver;
.source "MediaSessionTabHelper.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const-class v0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$3;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$3;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/EmptyTabObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 157
    sget-boolean v0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$3;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$3;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$100(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$3;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    # invokes: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->setWebContents(Lorg/chromium/content_public/browser/WebContents;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$700(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;Lorg/chromium/content_public/browser/WebContents;)V

    .line 159
    return-void
.end method

.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 175
    sget-boolean v0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$3;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$3;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$100(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$3;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    # invokes: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->cleanupWebContents()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$800(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)V

    .line 179
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$3;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->hideNotification()V

    .line 180
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$3;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$100(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/tab/Tab;->removeObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 181
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$3;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$102(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;Lorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;

    .line 182
    return-void
.end method

.method public onTitleUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .prologue
    .line 163
    sget-boolean v0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$3;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$3;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$100(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$3;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mNotificationInfoBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$400(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$3;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mFallbackMetadata:Lorg/chromium/content_public/common/MediaMetadata;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$200(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/content_public/common/MediaMetadata;

    move-result-object v0

    if-nez v0, :cond_2

    .line 171
    :cond_1
    :goto_0
    return-void

    .line 166
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$3;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mFallbackMetadata:Lorg/chromium/content_public/common/MediaMetadata;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$200(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/content_public/common/MediaMetadata;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$3;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$3;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v2}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$100(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->sanitizeMediaTitle(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$300(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/common/MediaMetadata;->setTitle(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$3;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mNotificationInfoBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$400(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$3;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mFallbackMetadata:Lorg/chromium/content_public/common/MediaMetadata;
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$200(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/content_public/common/MediaMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->setMetadata(Lorg/chromium/content_public/common/MediaMetadata;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    .line 169
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$3;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mNotificationInfoBuilder:Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;
    invoke-static {v1}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$400(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo$Builder;->build()Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/media/ui/MediaNotificationManager;->show(Landroid/content/Context;Lorg/chromium/chrome/browser/media/ui/MediaNotificationInfo;)V

    goto :goto_0
.end method
