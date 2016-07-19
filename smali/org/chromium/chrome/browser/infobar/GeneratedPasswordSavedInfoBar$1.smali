.class Lorg/chromium/chrome/browser/infobar/GeneratedPasswordSavedInfoBar$1;
.super Landroid/text/style/ClickableSpan;
.source "GeneratedPasswordSavedInfoBar.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/infobar/GeneratedPasswordSavedInfoBar;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/infobar/GeneratedPasswordSavedInfoBar;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/GeneratedPasswordSavedInfoBar$1;->this$0:Lorg/chromium/chrome/browser/infobar/GeneratedPasswordSavedInfoBar;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/GeneratedPasswordSavedInfoBar$1;->this$0:Lorg/chromium/chrome/browser/infobar/GeneratedPasswordSavedInfoBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/GeneratedPasswordSavedInfoBar;->onLinkClicked()V

    .line 52
    return-void
.end method
