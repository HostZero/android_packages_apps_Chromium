.class Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar$1;
.super Landroid/text/style/ClickableSpan;
.source "UpdatePasswordInfoBar.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar$1;->this$0:Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar$1;->this$0:Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;

    # invokes: Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->onUsernameLinkClicked(Landroid/view/View;)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->access$000(Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;Landroid/view/View;)V

    .line 84
    return-void
.end method
