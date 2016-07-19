.class Lorg/chromium/chrome/browser/snackbar/SnackbarView$1;
.super Ljava/lang/Object;
.source "SnackbarView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/snackbar/SnackbarView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/snackbar/SnackbarView;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView$1;->this$0:Lorg/chromium/chrome/browser/snackbar/SnackbarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/snackbar/SnackbarView$1;->this$0:Lorg/chromium/chrome/browser/snackbar/SnackbarView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/snackbar/SnackbarView;->adjustViewPosition()V

    .line 54
    return-void
.end method
