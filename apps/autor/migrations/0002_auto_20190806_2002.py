# Generated by Django 2.2.2 on 2019-08-06 20:02

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('autor', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='autor',
            old_name='sex',
            new_name='man',
        ),
    ]
