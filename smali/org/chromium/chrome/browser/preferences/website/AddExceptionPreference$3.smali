.class Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$3;
.super Ljava/lang/Object;
.source "AddExceptionPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$okButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;Landroid/widget/Button;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$3;->this$0:Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;

    iput-object p2, p0, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$3;->val$okButton:Landroid/widget/Button;

    iput-object p3, p0, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$3;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 144
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string/jumbo v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "."

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->nativeIsContentSettingsPatternValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v3, v1

    .line 152
    :goto_0
    if-eqz v3, :cond_1

    if-eqz p4, :cond_1

    .line 153
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$3;->this$0:Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "haptic_feedback_enabled"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 155
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$3;->this$0:Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v5, "vibrator"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v6, 0x32

    invoke-virtual {v0, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 160
    :cond_1
    iget-object v5, p0, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$3;->val$okButton:Landroid/widget/Button;

    if-nez v3, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 161
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/AddExceptionPreference$3;->val$input:Landroid/widget/EditText;

    if-eqz v3, :cond_4

    const/high16 v0, -0x10000

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 162
    return-void

    :cond_2
    move v3, v2

    .line 145
    goto :goto_0

    :cond_3
    move v0, v2

    .line 160
    goto :goto_1

    .line 161
    :cond_4
    const/high16 v0, -0x1000000

    goto :goto_2
.end method
