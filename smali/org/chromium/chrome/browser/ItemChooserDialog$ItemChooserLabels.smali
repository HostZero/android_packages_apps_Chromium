.class public Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;
.super Ljava/lang/Object;
.source "ItemChooserDialog.java"


# instance fields
.field public final mNoneFound:Landroid/text/SpannableString;

.field public final mPositiveButton:Ljava/lang/String;

.field public final mSearching:Landroid/text/SpannableString;

.field public final mStatusActive:Landroid/text/SpannableString;

.field public final mStatusIdleNoneFound:Landroid/text/SpannableString;

.field public final mStatusIdleSomeFound:Landroid/text/SpannableString;

.field public final mTitle:Landroid/text/SpannableString;


# direct methods
.method public constructor <init>(Landroid/text/SpannableString;Landroid/text/SpannableString;Landroid/text/SpannableString;Landroid/text/SpannableString;Landroid/text/SpannableString;Landroid/text/SpannableString;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;->mTitle:Landroid/text/SpannableString;

    .line 98
    iput-object p2, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;->mSearching:Landroid/text/SpannableString;

    .line 99
    iput-object p3, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;->mNoneFound:Landroid/text/SpannableString;

    .line 100
    iput-object p4, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;->mStatusActive:Landroid/text/SpannableString;

    .line 101
    iput-object p5, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;->mStatusIdleNoneFound:Landroid/text/SpannableString;

    .line 102
    iput-object p6, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;->mStatusIdleSomeFound:Landroid/text/SpannableString;

    .line 103
    iput-object p7, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserLabels;->mPositiveButton:Ljava/lang/String;

    .line 104
    return-void
.end method
