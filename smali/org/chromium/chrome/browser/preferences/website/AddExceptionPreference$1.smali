.class Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$1;
.super Ljava/lang/Object;
.source "AddExceptionPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$1;->this$0:Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 104
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$1;->this$0:Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;

    # getter for: Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;->mSiteAddedCallback:Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$SiteAddedCallback;
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;->access$000(Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;)Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$SiteAddedCallback;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$SiteAddedCallback;->onAddSite(Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
