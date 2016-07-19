.class Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar$2;
.super Landroid/text/style/ClickableSpan;
.source "UpdatePasswordInfoBar.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar$2;->this$0:Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar$2;->this$0:Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->onLinkClicked()V

    .line 112
    return-void
.end method
