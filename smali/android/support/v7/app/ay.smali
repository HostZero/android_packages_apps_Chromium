.class public Landroid/support/v7/app/ay;
.super Ljava/lang/Object;
.source "MediaRouteDialogFactory.java"


# static fields
.field private static final sDefault:Landroid/support/v7/app/ay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Landroid/support/v7/app/ay;

    invoke-direct {v0}, Landroid/support/v7/app/ay;-><init>()V

    sput-object v0, Landroid/support/v7/app/ay;->sDefault:Landroid/support/v7/app/ay;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getDefault()Landroid/support/v7/app/ay;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Landroid/support/v7/app/ay;->sDefault:Landroid/support/v7/app/ay;

    return-object v0
.end method


# virtual methods
.method public onCreateChooserDialogFragment()Landroid/support/v7/app/ai;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Landroid/support/v7/app/ai;

    invoke-direct {v0}, Landroid/support/v7/app/ai;-><init>()V

    return-object v0
.end method

.method public onCreateControllerDialogFragment()Landroid/support/v7/app/ax;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Landroid/support/v7/app/ax;

    invoke-direct {v0}, Landroid/support/v7/app/ax;-><init>()V

    return-object v0
.end method
