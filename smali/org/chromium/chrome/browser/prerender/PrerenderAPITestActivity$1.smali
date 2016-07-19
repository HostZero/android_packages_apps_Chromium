.class Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity$1;
.super Ljava/lang/Object;
.source "PrerenderAPITestActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity$1;->this$0:Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity$1;->this$0:Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, v0, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;->mService:Landroid/os/Messenger;

    .line 41
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity$1;->this$0:Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/chromium/chrome/browser/prerender/PrerenderAPITestActivity;->mService:Landroid/os/Messenger;

    .line 46
    return-void
.end method
