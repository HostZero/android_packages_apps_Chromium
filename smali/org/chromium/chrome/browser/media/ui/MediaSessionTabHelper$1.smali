.class Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$1;
.super Ljava/lang/Object;
.source "MediaSessionTabHelper.java"

# interfaces
.implements Lorg/chromium/chrome/browser/media/ui/MediaNotificationListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$1;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause(I)V
    .locals 1

    .prologue
    .line 54
    invoke-static {p1}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->convertMediaActionSourceToUMA(I)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/metrics/MediaSessionUMA;->recordPause(I)V

    .line 57
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$1;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mWebContents:Lorg/chromium/content_public/browser/WebContents;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$000(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->suspendMediaSession()V

    .line 58
    return-void
.end method

.method public onPlay(I)V
    .locals 1

    .prologue
    .line 46
    invoke-static {p1}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->convertMediaActionSourceToUMA(I)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/metrics/MediaSessionUMA;->recordPlay(I)V

    .line 49
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$1;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mWebContents:Lorg/chromium/content_public/browser/WebContents;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$000(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->resumeMediaSession()V

    .line 50
    return-void
.end method

.method public onStop(I)V
    .locals 1

    .prologue
    .line 62
    invoke-static {p1}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->convertMediaActionSourceToUMA(I)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/metrics/MediaSessionUMA;->recordStop(I)V

    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper$1;->this$0:Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;

    # getter for: Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->mWebContents:Lorg/chromium/content_public/browser/WebContents;
    invoke-static {v0}, Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;->access$000(Lorg/chromium/chrome/browser/media/ui/MediaSessionTabHelper;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->stopMediaSession()V

    .line 66
    return-void
.end method
