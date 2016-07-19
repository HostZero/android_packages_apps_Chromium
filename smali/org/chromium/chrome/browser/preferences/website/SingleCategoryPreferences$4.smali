.class Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$4;
.super Ljava/lang/Object;
.source "SingleCategoryPreferences.java"

# interfaces
.implements Lorg/chromium/chrome/browser/media/cdm/MediaDrmCredentialManager$MediaDrmCredentialManagerCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$4;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCredentialResetFinished(Z)V
    .locals 3

    .prologue
    .line 640
    if-eqz p1, :cond_0

    .line 643
    :goto_0
    return-void

    .line 641
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$4;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    sget v1, Lorg/chromium/chrome/R$string;->protected_content_reset_failed:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 642
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$4;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lorg/chromium/ui/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/widget/Toast;->show()V

    goto :goto_0
.end method
