.class Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1$1;
.super Ljava/lang/Object;
.source "ConfirmInfoBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1$1;->this$1:Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1$1;->this$1:Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1;->this$0:Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->onCloseButtonClicked()V

    .line 194
    return-void
.end method
