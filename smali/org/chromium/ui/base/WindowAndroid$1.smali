.class Lorg/chromium/ui/base/WindowAndroid$1;
.super Ljava/lang/Object;
.source "WindowAndroid.java"

# interfaces
.implements Lorg/chromium/ui/VSyncMonitor$Listener;


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lorg/chromium/ui/base/WindowAndroid$1;->this$0:Lorg/chromium/ui/base/WindowAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVSync(Lorg/chromium/ui/VSyncMonitor;J)V
    .locals 8

    .prologue
    .line 120
    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid$1;->this$0:Lorg/chromium/ui/base/WindowAndroid;

    # getter for: Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J
    invoke-static {v0}, Lorg/chromium/ui/base/WindowAndroid;->access$300(Lorg/chromium/ui/base/WindowAndroid;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 121
    iget-object v1, p0, Lorg/chromium/ui/base/WindowAndroid$1;->this$0:Lorg/chromium/ui/base/WindowAndroid;

    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid$1;->this$0:Lorg/chromium/ui/base/WindowAndroid;

    # getter for: Lorg/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J
    invoke-static {v0}, Lorg/chromium/ui/base/WindowAndroid;->access$300(Lorg/chromium/ui/base/WindowAndroid;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/chromium/ui/base/WindowAndroid$1;->this$0:Lorg/chromium/ui/base/WindowAndroid;

    # getter for: Lorg/chromium/ui/base/WindowAndroid;->mVSyncMonitor:Lorg/chromium/ui/VSyncMonitor;
    invoke-static {v0}, Lorg/chromium/ui/base/WindowAndroid;->access$400(Lorg/chromium/ui/base/WindowAndroid;)Lorg/chromium/ui/VSyncMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/VSyncMonitor;->getVSyncPeriodInMicroseconds()J

    move-result-wide v6

    move-wide v4, p2

    # invokes: Lorg/chromium/ui/base/WindowAndroid;->nativeOnVSync(JJJ)V
    invoke-static/range {v1 .. v7}, Lorg/chromium/ui/base/WindowAndroid;->access$500(Lorg/chromium/ui/base/WindowAndroid;JJJ)V

    .line 125
    :cond_0
    return-void
.end method
