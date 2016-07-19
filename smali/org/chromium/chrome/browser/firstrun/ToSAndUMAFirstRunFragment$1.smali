.class Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment$1;
.super Ljava/lang/Object;
.source "ToSAndUMAFirstRunFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment$1;->this$0:Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment$1;->this$0:Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;->getPageDelegate()Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment$1;->this$0:Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;

    # getter for: Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;->mSendReportCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;->access$000(Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;->acceptTermsOfService(Z)V

    .line 54
    return-void
.end method
