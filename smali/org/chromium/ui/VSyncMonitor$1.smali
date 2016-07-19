.class Lorg/chromium/ui/VSyncMonitor$1;
.super Ljava/lang/Object;
.source "VSyncMonitor.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/VSyncMonitor;

.field final synthetic val$useEstimatedRefreshPeriod:Z


# direct methods
.method constructor <init>(Lorg/chromium/ui/VSyncMonitor;Z)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lorg/chromium/ui/VSyncMonitor$1;->this$0:Lorg/chromium/ui/VSyncMonitor;

    iput-boolean p2, p0, Lorg/chromium/ui/VSyncMonitor$1;->val$useEstimatedRefreshPeriod:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 7

    .prologue
    .line 73
    const-string/jumbo v0, "VSync"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 74
    iget-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor$1;->val$useEstimatedRefreshPeriod:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/VSyncMonitor$1;->this$0:Lorg/chromium/ui/VSyncMonitor;

    # getter for: Lorg/chromium/ui/VSyncMonitor;->mConsecutiveVSync:Z
    invoke-static {v0}, Lorg/chromium/ui/VSyncMonitor;->access$000(Lorg/chromium/ui/VSyncMonitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/chromium/ui/VSyncMonitor$1;->this$0:Lorg/chromium/ui/VSyncMonitor;

    # getter for: Lorg/chromium/ui/VSyncMonitor;->mGoodStartingPointNano:J
    invoke-static {v0}, Lorg/chromium/ui/VSyncMonitor;->access$100(Lorg/chromium/ui/VSyncMonitor;)J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 80
    iget-object v2, p0, Lorg/chromium/ui/VSyncMonitor$1;->this$0:Lorg/chromium/ui/VSyncMonitor;

    const v3, 0x3dcccccd    # 0.1f

    iget-object v4, p0, Lorg/chromium/ui/VSyncMonitor$1;->this$0:Lorg/chromium/ui/VSyncMonitor;

    # getter for: Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J
    invoke-static {v4}, Lorg/chromium/ui/VSyncMonitor;->access$200(Lorg/chromium/ui/VSyncMonitor;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    long-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-long v0, v0

    # += operator for: Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J
    invoke-static {v2, v0, v1}, Lorg/chromium/ui/VSyncMonitor;->access$214(Lorg/chromium/ui/VSyncMonitor;J)J

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/VSyncMonitor$1;->this$0:Lorg/chromium/ui/VSyncMonitor;

    # setter for: Lorg/chromium/ui/VSyncMonitor;->mGoodStartingPointNano:J
    invoke-static {v0, p1, p2}, Lorg/chromium/ui/VSyncMonitor;->access$102(Lorg/chromium/ui/VSyncMonitor;J)J

    .line 84
    iget-object v0, p0, Lorg/chromium/ui/VSyncMonitor$1;->this$0:Lorg/chromium/ui/VSyncMonitor;

    iget-object v1, p0, Lorg/chromium/ui/VSyncMonitor$1;->this$0:Lorg/chromium/ui/VSyncMonitor;

    # invokes: Lorg/chromium/ui/VSyncMonitor;->getCurrentNanoTime()J
    invoke-static {v1}, Lorg/chromium/ui/VSyncMonitor;->access$300(Lorg/chromium/ui/VSyncMonitor;)J

    move-result-wide v2

    # invokes: Lorg/chromium/ui/VSyncMonitor;->onVSyncCallback(JJ)V
    invoke-static {v0, p1, p2, v2, v3}, Lorg/chromium/ui/VSyncMonitor;->access$400(Lorg/chromium/ui/VSyncMonitor;JJ)V

    .line 85
    const-string/jumbo v0, "VSync"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 86
    return-void
.end method
