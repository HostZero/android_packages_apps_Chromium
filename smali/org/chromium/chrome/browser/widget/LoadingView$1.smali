.class Lorg/chromium/chrome/browser/widget/LoadingView$1;
.super Ljava/lang/Object;
.source "LoadingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/LoadingView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/LoadingView;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/LoadingView$1;->this$0:Lorg/chromium/chrome/browser/widget/LoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 29
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/LoadingView$1;->this$0:Lorg/chromium/chrome/browser/widget/LoadingView;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    # setter for: Lorg/chromium/chrome/browser/widget/LoadingView;->mStartTime:J
    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/widget/LoadingView;->access$002(Lorg/chromium/chrome/browser/widget/LoadingView;J)J

    .line 30
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/LoadingView$1;->this$0:Lorg/chromium/chrome/browser/widget/LoadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/LoadingView;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/LoadingView$1;->this$0:Lorg/chromium/chrome/browser/widget/LoadingView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/LoadingView;->setAlpha(F)V

    .line 32
    return-void
.end method
