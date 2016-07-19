.class Lorg/chromium/chrome/browser/infobar/TranslateInfoBar$1;
.super Landroid/text/style/ClickableSpan;
.source "TranslateInfoBar.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;

.field final synthetic val$panelId:I


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;I)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar$1;->this$0:Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;

    iput p2, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar$1;->val$panelId:I

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar$1;->this$0:Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;

    iget v1, p0, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar$1;->val$panelId:I

    # invokes: Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->swapPanel(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;->access$000(Lorg/chromium/chrome/browser/infobar/TranslateInfoBar;I)V

    .line 291
    return-void
.end method
