# Generated by Django 2.2.2 on 2019-08-06 19:00

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Autor',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('surname', models.CharField(max_length=50)),
                ('birthdate', models.DateField()),
                ('country', models.CharField(max_length=30)),
                ('sex', models.BooleanField()),
                ('nobel', models.BooleanField()),
            ],
        ),
    ]