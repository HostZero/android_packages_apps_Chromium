.class public Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserRow;
.super Ljava/lang/Object;
.source "ItemChooserDialog.java"


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserRow;->mKey:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserRow;->mDescription:Ljava/lang/String;

    .line 68
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserRow;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserRow;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserRow;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/chromium/chrome/browser/ItemChooserDialog$ItemChooserRow;->mDescription:Ljava/lang/String;

    return-object v0
.end method
