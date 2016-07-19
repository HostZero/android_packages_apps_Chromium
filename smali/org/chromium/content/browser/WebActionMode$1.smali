.class Lorg/chromium/content/browser/WebActionMode$1;
.super Ljava/lang/Object;
.source "WebActionMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/WebActionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lorg/chromium/content/browser/WebActionMode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/WebActionMode$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/content/browser/WebActionMode;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lorg/chromium/content/browser/WebActionMode$1;->this$0:Lorg/chromium/content/browser/WebActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 53
    sget-boolean v0, Lorg/chromium/content/browser/WebActionMode$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/WebActionMode$1;->this$0:Lorg/chromium/content/browser/WebActionMode;

    # getter for: Lorg/chromium/content/browser/WebActionMode;->mHidden:Z
    invoke-static {v0}, Lorg/chromium/content/browser/WebActionMode;->access$000(Lorg/chromium/content/browser/WebActionMode;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/WebActionMode$1;->this$0:Lorg/chromium/content/browser/WebActionMode;

    # invokes: Lorg/chromium/content/browser/WebActionMode;->getDefaultHideDuration()J
    invoke-static {v0}, Lorg/chromium/content/browser/WebActionMode;->access$100(Lorg/chromium/content/browser/WebActionMode;)J

    move-result-wide v0

    .line 56
    iget-object v2, p0, Lorg/chromium/content/browser/WebActionMode$1;->this$0:Lorg/chromium/content/browser/WebActionMode;

    # getter for: Lorg/chromium/content/browser/WebActionMode;->mView:Landroid/view/View;
    invoke-static {v2}, Lorg/chromium/content/browser/WebActionMode;->access$300(Lorg/chromium/content/browser/WebActionMode;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/content/browser/WebActionMode$1;->this$0:Lorg/chromium/content/browser/WebActionMode;

    # getter for: Lorg/chromium/content/browser/WebActionMode;->mRepeatingHideRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lorg/chromium/content/browser/WebActionMode;->access$200(Lorg/chromium/content/browser/WebActionMode;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x1

    sub-long v4, v0, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    iget-object v2, p0, Lorg/chromium/content/browser/WebActionMode$1;->this$0:Lorg/chromium/content/browser/WebActionMode;

    # invokes: Lorg/chromium/content/browser/WebActionMode;->hideTemporarily(J)V
    invoke-static {v2, v0, v1}, Lorg/chromium/content/browser/WebActionMode;->access$400(Lorg/chromium/content/browser/WebActionMode;J)V

    .line 58
    return-void
.end method
