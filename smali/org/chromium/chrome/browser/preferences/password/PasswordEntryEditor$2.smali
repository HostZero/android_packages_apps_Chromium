.class Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$2;
.super Ljava/lang/Object;
.source "PasswordEntryEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;

.field final synthetic val$cancelButton:Landroid/widget/Button;

.field final synthetic val$deleteButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$2;->this$0:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$2;->val$deleteButton:Landroid/widget/Button;

    iput-object p3, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$2;->val$cancelButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$2;->this$0:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;

    # invokes: Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->removeItem()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->access$200(Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;)V

    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$2;->val$deleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$2;->val$cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 103
    return-void
.end method
