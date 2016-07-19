.class Lorg/chromium/chrome/browser/widget/FloatLabelLayout$2;
.super Ljava/lang/Object;
.source "FloatLabelLayout.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/FloatLabelLayout;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/FloatLabelLayout;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout$2;->this$0:Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/FloatLabelLayout$2;->this$0:Lorg/chromium/chrome/browser/widget/FloatLabelLayout;

    const/4 v1, 0x1

    # invokes: Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->updateLabelVisibility(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/widget/FloatLabelLayout;->access$000(Lorg/chromium/chrome/browser/widget/FloatLabelLayout;Z)V

    .line 168
    return-void
.end method
