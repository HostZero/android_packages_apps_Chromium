.class Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$1;
.super Landroid/text/style/ClickableSpan;
.source "AutofillSaveCardInfoBar.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;

.field final synthetic val$link:Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine$Link;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine$Link;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$1;->this$0:Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;

    iput-object p2, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$1;->val$link:Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine$Link;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 213
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$1;->this$0:Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$1;->this$0:Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;

    # getter for: Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->mNativeAutofillSaveCardInfoBar:J
    invoke-static {v1}, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->access$000(Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;)J

    move-result-wide v2

    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$1;->val$link:Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine$Link;

    iget-object v1, v1, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine$Link;->url:Ljava/lang/String;

    # invokes: Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->nativeOnLegalMessageLinkClicked(JLjava/lang/String;)V
    invoke-static {v0, v2, v3, v1}, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->access$100(Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;JLjava/lang/String;)V

    .line 214
    return-void
.end method
