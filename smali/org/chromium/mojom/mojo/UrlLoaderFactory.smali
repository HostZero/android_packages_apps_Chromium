.class public interface abstract Lorg/chromium/mojom/mojo/UrlLoaderFactory;
.super Ljava/lang/Object;
.source "UrlLoaderFactory.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/chromium/mojom/mojo/UrlLoaderFactory_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/mojo/UrlLoaderFactory;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract createUrlLoader(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
.end method
