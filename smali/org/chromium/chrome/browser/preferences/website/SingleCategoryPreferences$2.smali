.class Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$2;
.super Ljava/lang/Object;
.source "SingleCategoryPreferences.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$2;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$2;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/ProtectedContentResetCredentialConfirmDialogFragment;->newInstance(Lorg/chromium/chrome/browser/preferences/ProtectedContentResetCredentialConfirmDialogFragment$Listener;)Lorg/chromium/chrome/browser/preferences/ProtectedContentResetCredentialConfirmDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences$2;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/website/SingleCategoryPreferences;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/preferences/ProtectedContentResetCredentialConfirmDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 341
    const/4 v0, 0x1

    return v0
.end method
