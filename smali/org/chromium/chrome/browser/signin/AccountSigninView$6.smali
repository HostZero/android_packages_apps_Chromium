.class Lorg/chromium/chrome/browser/signin/AccountSigninView$6;
.super Ljava/lang/Object;
.source "AccountSigninView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$6;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountSigninView$6;->this$0:Lorg/chromium/chrome/browser/signin/AccountSigninView;

    # invokes: Lorg/chromium/chrome/browser/signin/AccountSigninView;->showConfirmSigninPageAccountTrackerServiceCheck()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountSigninView;->access$1000(Lorg/chromium/chrome/browser/signin/AccountSigninView;)V

    .line 576
    return-void
.end method
