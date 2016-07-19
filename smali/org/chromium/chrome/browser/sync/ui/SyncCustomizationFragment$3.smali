.class Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$3;
.super Ljava/lang/Object;
.source "SyncCustomizationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;

.field final synthetic val$preferenceChecked:Z

.field final synthetic val$syncAutofillToggled:Z


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;ZZ)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$3;->this$0:Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;

    iput-boolean p2, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$3;->val$syncAutofillToggled:Z

    iput-boolean p3, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$3;->val$preferenceChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 208
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$3;->val$syncAutofillToggled:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$3;->this$0:Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;

    # getter for: Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mPaymentsIntegration:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->access$500(Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$3;->val$preferenceChecked:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$3;->this$0:Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;

    # getter for: Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->mPaymentsIntegration:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->access$500(Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$3;->val$preferenceChecked:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$3;->this$0:Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;

    # invokes: Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->maybeDisableSync()Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->access$600(Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;)Z

    .line 218
    return-void
.end method
