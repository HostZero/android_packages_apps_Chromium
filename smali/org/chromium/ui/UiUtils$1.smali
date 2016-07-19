.class final Lorg/chromium/ui/UiUtils$1;
.super Ljava/lang/Object;
.source "UiUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$attempt:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lorg/chromium/ui/UiUtils$1;->val$view:Landroid/view/View;

    iput-object p2, p0, Lorg/chromium/ui/UiUtils$1;->val$attempt:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lorg/chromium/ui/UiUtils$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lorg/chromium/ui/UiUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 98
    :try_start_0
    iget-object v1, p0, Lorg/chromium/ui/UiUtils$1;->val$view:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    iget-object v1, p0, Lorg/chromium/ui/UiUtils$1;->val$attempt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 101
    iget-object v0, p0, Lorg/chromium/ui/UiUtils$1;->val$handler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 103
    :cond_0
    const-string/jumbo v1, "UiUtils"

    const-string/jumbo v2, "Unable to open keyboard.  Giving up."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
