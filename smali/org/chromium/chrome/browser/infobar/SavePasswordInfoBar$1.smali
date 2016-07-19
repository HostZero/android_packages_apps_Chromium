.class Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar$1;
.super Landroid/text/style/ClickableSpan;
.source "SavePasswordInfoBar.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar$1;->this$0:Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar$1;->this$0:Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/SavePasswordInfoBar;->onLinkClicked()V

    .line 55
    return-void
.end method
