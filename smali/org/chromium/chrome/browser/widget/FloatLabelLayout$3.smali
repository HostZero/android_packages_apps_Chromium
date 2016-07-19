.class Lorg/chromium/chrome/browser/widget/FloatLabelLayout$3;
.super Landroid/support/v4/view/bd;
.source "FloatLabelLayout.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/FloatLabelLayout;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/FloatLabelLayout;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout$3;->this$0:Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    invoke-direct {p0}, Landroid/support/v4/view/bd;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout$3;->this$0:Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    # getter for: Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mLabel:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->access$100(Lorg/chromium/chrome/browser/widget/FloatLabelLayout;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout$3;->this$0:Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    # getter for: Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->access$300(Lorg/chromium/chrome/browser/widget/FloatLabelLayout;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout$3;->this$0:Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    # getter for: Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->mHint:Ljava/lang/CharSequence;
    invoke-static {v1}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->access$200(Lorg/chromium/chrome/browser/widget/FloatLabelLayout;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 280
    return-void
.end method
