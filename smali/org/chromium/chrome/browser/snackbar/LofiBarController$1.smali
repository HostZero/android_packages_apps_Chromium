.class Lorg/chromium/chrome/browser/snackbar/LofiBarController$1;
.super Lorg/chromium/chrome/browser/tab/EmptyTabObserver;
.source "LofiBarController.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/snackbar/LofiBarController;

.field final synthetic val$isPreview:Z


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/snackbar/LofiBarController;Z)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lorg/chromium/chrome/browser/snackbar/LofiBarController$1;->this$0:Lorg/chromium/chrome/browser/snackbar/LofiBarController;

    iput-boolean p2, p0, Lorg/chromium/chrome/browser/snackbar/LofiBarController$1;->val$isPreview:Z

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tab/EmptyTabObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/LofiBarController$1;->this$0:Lorg/chromium/chrome/browser/snackbar/LofiBarController;

    # invokes: Lorg/chromium/chrome/browser/snackbar/LofiBarController;->dismissLoFiBar()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->access$100(Lorg/chromium/chrome/browser/snackbar/LofiBarController;)V

    .line 82
    return-void
.end method

.method public onHidden(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/LofiBarController$1;->this$0:Lorg/chromium/chrome/browser/snackbar/LofiBarController;

    # invokes: Lorg/chromium/chrome/browser/snackbar/LofiBarController;->dismissLoFiBar()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->access$100(Lorg/chromium/chrome/browser/snackbar/LofiBarController;)V

    .line 77
    return-void
.end method

.method public onShown(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/LofiBarController$1;->this$0:Lorg/chromium/chrome/browser/snackbar/LofiBarController;

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/snackbar/LofiBarController$1;->val$isPreview:Z

    # invokes: Lorg/chromium/chrome/browser/snackbar/LofiBarController;->showLoFiBar(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    invoke-static {v0, p1, v1}, Lorg/chromium/chrome/browser/snackbar/LofiBarController;->access$000(Lorg/chromium/chrome/browser/snackbar/LofiBarController;Lorg/chromium/chrome/browser/tab/Tab;Z)V

    .line 71
    invoke-virtual {p1, p0}, Lorg/chromium/chrome/browser/tab/Tab;->removeObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 72
    return-void
.end method
