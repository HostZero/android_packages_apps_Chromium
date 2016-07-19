.class Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog$3;
.super Ljava/lang/Object;
.source "AccountChooserDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog$3;->this$0:Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog$3;->this$0:Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;

    iget-object v1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog$3;->this$0:Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;

    # getter for: Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mCredentials:[Lorg/chromium/chrome/browser/password_manager/Credential;
    invoke-static {v1}, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->access$500(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;)[Lorg/chromium/chrome/browser/password_manager/Credential;

    move-result-object v1

    aget-object v1, v1, p2

    # setter for: Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mCredential:Lorg/chromium/chrome/browser/password_manager/Credential;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->access$402(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;Lorg/chromium/chrome/browser/password_manager/Credential;)Lorg/chromium/chrome/browser/password_manager/Credential;

    .line 172
    return-void
.end method
