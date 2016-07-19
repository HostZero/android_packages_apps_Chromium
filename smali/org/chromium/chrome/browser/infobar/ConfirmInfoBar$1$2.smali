.class Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1$2;
.super Ljava/lang/Object;
.source "ConfirmInfoBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1$2;->this$1:Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1$2;->this$1:Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1;->this$0:Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;

    # invokes: Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->requestAndroidPermissions()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->access$200(Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;)V

    .line 188
    return-void
.end method
