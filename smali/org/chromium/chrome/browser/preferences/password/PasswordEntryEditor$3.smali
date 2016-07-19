.class Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$3;
.super Ljava/lang/Object;
.source "PasswordEntryEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$3;->this$0:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$3;->this$0:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 110
    return-void
.end method
