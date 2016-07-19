.class Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$1;
.super Ljava/lang/Object;
.source "PasswordEntryEditor.java"

# interfaces
.implements Lorg/chromium/chrome/browser/PasswordUIView$PasswordListObserver;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;

.field final synthetic val$passwordUIView:Lorg/chromium/chrome/browser/PasswordUIView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;Lorg/chromium/chrome/browser/PasswordUIView;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$1;->this$0:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$1;->val$passwordUIView:Lorg/chromium/chrome/browser/PasswordUIView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public passwordExceptionListAvailable(I)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$1;->this$0:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;

    # getter for: Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->mException:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->access$000(Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$1;->val$passwordUIView:Lorg/chromium/chrome/browser/PasswordUIView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$1;->this$0:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;

    # getter for: Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->mID:I
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->access$100(Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/PasswordUIView;->removeSavedPasswordException(I)V

    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$1;->val$passwordUIView:Lorg/chromium/chrome/browser/PasswordUIView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/PasswordUIView;->destroy()V

    .line 84
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$1;->this$0:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 86
    :cond_0
    return-void
.end method

.method public passwordListAvailable(I)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$1;->this$0:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;

    # getter for: Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->mException:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->access$000(Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$1;->val$passwordUIView:Lorg/chromium/chrome/browser/PasswordUIView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$1;->this$0:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;

    # getter for: Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->mID:I
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->access$100(Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/PasswordUIView;->removeSavedPasswordEntry(I)V

    .line 74
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$1;->val$passwordUIView:Lorg/chromium/chrome/browser/PasswordUIView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/PasswordUIView;->destroy()V

    .line 75
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$1;->this$0:Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 77
    :cond_0
    return-void
.end method
