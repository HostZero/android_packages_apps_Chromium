.class Lorg/chromium/chrome/browser/snackbar/SnackbarView$2;
.super Ljava/lang/Object;
.source "SnackbarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/snackbar/SnackbarView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/snackbar/SnackbarView;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView$2;->this$0:Lorg/chromium/chrome/browser/snackbar/SnackbarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView$2;->this$0:Lorg/chromium/chrome/browser/snackbar/SnackbarView;

    # getter for: Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mParent:Landroid/view/ViewGroup;
    invoke-static {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->access$100(Lorg/chromium/chrome/browser/snackbar/SnackbarView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView$2;->this$0:Lorg/chromium/chrome/browser/snackbar/SnackbarView;

    # getter for: Lorg/chromium/chrome/browser/snackbar/SnackbarView;->mView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->access$000(Lorg/chromium/chrome/browser/snackbar/SnackbarView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 106
    return-void
.end method
