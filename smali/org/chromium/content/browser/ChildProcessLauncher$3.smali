.class final Lorg/chromium/content/browser/ChildProcessLauncher$3;
.super Ljava/lang/Object;
.source "ChildProcessLauncher.java"

# interfaces
.implements Lorg/chromium/content/browser/ChildProcessConnection$ConnectionCallback;


# instance fields
.field final synthetic val$callbackType:I

.field final synthetic val$clientContext:J

.field final synthetic val$connection:Lorg/chromium/content/browser/ChildProcessConnection;


# direct methods
.method constructor <init>(JILorg/chromium/content/browser/ChildProcessConnection;)V
    .locals 1

    .prologue
    .line 753
    iput-wide p1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$clientContext:J

    iput p3, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$callbackType:I

    iput-object p4, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$connection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(I)V
    .locals 4

    .prologue
    .line 756
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    iget-wide v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$clientContext:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$callbackType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 758
    if-eqz p1, :cond_0

    .line 759
    # getter for: Lorg/chromium/content/browser/ChildProcessLauncher;->sBindingManager:Lorg/chromium/content/browser/BindingManager;
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$1200()Lorg/chromium/content/browser/BindingManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$connection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0, p1, v1}, Lorg/chromium/content/browser/BindingManager;->addNewConnection(ILorg/chromium/content/browser/ChildProcessConnection;)V

    .line 760
    # getter for: Lorg/chromium/content/browser/ChildProcessLauncher;->sServiceMap:Ljava/util/Map;
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$1300()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$connection:Lorg/chromium/content/browser/ChildProcessConnection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$clientContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 766
    iget-wide v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$3;->val$clientContext:J

    # invokes: Lorg/chromium/content/browser/ChildProcessLauncher;->nativeOnChildProcessStarted(JI)V
    invoke-static {v0, v1, p1}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$1400(JI)V

    .line 768
    :cond_1
    return-void
.end method
